performSnapshot() {
  # Check if confirmSnapshot is not defined and prompt for it
  if [[ -z "${confirmSnapshot+x}" ]]; then
    read -p "Confirm Snapshot (y/n): " confirmSnapshot
  fi

  # Check if url is not defined and prompt for it
  if [[ -z "${url+x}" ]]; then
    read -p "Enter URL: " url
  fi

  # if snapshot then do it
  if [[ "$confirmSnapshot" == "y" ]]; then
    filename=$(basename "$url")
    echo "Adding snapshot: $filename from $url"
    wget -O "$filename" "$url" --inet4-only
    appstop
    $DAEMON_NAME tendermint unsafe-reset-all --home "$DAEMON_HOME" --keep-addr-book
    extension="${filename##*.}"
    if [[ "$extension" == "lz4" ]]; then
      lz4 -c -d "$filename" | pv | tar -x -C "$DAEMON_HOME"
    elif [[ "$extension" == "gz" ]]; then
      pv "$filename" | tar -xzf - -C "$DAEMON_HOME"
      appstart
    else
      echo "Unsupported file extension: $extension"
    fi
  fi
}

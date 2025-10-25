$uri = "http://localhost:5678/webhook/my-event"
$body = '{"title":"hello","body":"world"}'
try {
  $resp = Invoke-WebRequest -Uri $uri -Method POST -Headers @{ "Content-Type" = "application/json" } -Body $body -UseBasicParsing -TimeoutSec 10
  if ($resp.StatusCode -eq 200) {
    Write-Host "OK: Received 200. Response content:"
    Write-Host $resp.Content
    exit 0
  } else {
    Write-Host "ERROR: Status $($resp.StatusCode)"
    Write-Host $resp.Content
    exit 2
  }
} catch {
  Write-Host "REQUEST FAILED:" -ForegroundColor Red
  Write-Host $_.Exception.Message
  exit 1
}

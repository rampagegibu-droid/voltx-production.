Demo commands (paper mode):

# Run a strategy in paper mode
curl -X POST http://localhost:10000/api/engine/run -H "Content-Type: application/json" -d '{ "mode":"paper", "config": { "symbol":"BTCUSDT", "strategy": { "type":"ema_cross", "params": { "fast":9, "slow":21 } } } }'

# Run backtest (upload candles)
curl -X POST http://localhost:10000/api/engine/backtest -H "Content-Type: application/json" -d '{ "candles":[{"t":0,"o":1,"h":2,"l":0,"c":1}], "config": {"fast":10,"slow":30} }'

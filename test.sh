curl -X POST http://localhost:4318/v1/traces \
    -H "Content-Type: application/json" \
    -d '{
    "resourceSpans": [{
        "resource": {"attributes": [{"key": "service.name", "value": {"stringValue": "test"}}]},
            "scopeSpans": [{
                "spans": [{
                    "traceId": "5B8EFFF798038103D269B633813FC60C",
                    "spanId": "EEE19B7EC3C1B174",
                    "name": "test-span",
                    "kind": 1,
                    "startTimeUnixNano": "1620000000000000000",
                    "endTimeUnixNano": "1620000001000000000"
                }]
        }]
    }]
}'

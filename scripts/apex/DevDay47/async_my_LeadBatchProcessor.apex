
// --------------- 5/1/2023 ---------------------------


MyLeadBatchProcessor mlp = new MyLeadBatchProcessor();

//  Database.executeBatch(batchable, batchSize)
Database.executeBatch(mlp, 200);
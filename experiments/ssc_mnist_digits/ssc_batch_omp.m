function result = ssc_batch_omp(X, D, K, options)
    rnorm_thr = 1e-3;
    method = spx.cluster.ssc.OMP_REPR_METHOD.BATCH_OMP_C;
    solver = spx.cluster.ssc.SSC_OMP(X, D, K, rnorm_thr, method);
    solver.Quiet = true;
    result = solver.solve();
end

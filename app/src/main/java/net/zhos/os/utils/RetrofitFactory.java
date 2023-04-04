package net.zhos.os.utils;

import net.zhos.os.config.ServerConfig;

import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class RetrofitFactory {

    private Retrofit retrofit = null;

    private RetrofitFactory() {
        retrofit = new Retrofit.Builder()
                .baseUrl(ServerConfig.HOST)
                .addConverterFactory(GsonConverterFactory.create())
                .build();
    }

    private static final class RetrofitFactoryHolder {
        private static final RetrofitFactory retrofitFactory = new RetrofitFactory();
    }

    public static Retrofit getInstance() {
        return RetrofitFactoryHolder.retrofitFactory.retrofit;
    }

}

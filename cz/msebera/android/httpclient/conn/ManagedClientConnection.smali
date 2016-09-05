.class public interface abstract Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
.super Ljava/lang/Object;
.source "ManagedClientConnection.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpClientConnection;
.implements Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;
.implements Lcz/msebera/android/httpclient/conn/HttpRoutedConnection;
.implements Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract a(JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract a(Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V
.end method

.method public abstract a(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
.end method

.method public abstract a(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public abstract a(ZLcz/msebera/android/httpclient/params/HttpParams;)V
.end method

.method public abstract h()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
.end method

.method public abstract i()V
.end method

.method public abstract j()V
.end method

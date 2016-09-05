.class public Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;
.super Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;
.source "BasicPooledConnAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    .line 54
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->i()V

    .line 55
    return-void
.end method


# virtual methods
.method protected l()V
    .registers 1

    .prologue
    .line 72
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->l()V

    .line 73
    return-void
.end method

.method protected n()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .registers 2

    .prologue
    .line 60
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->n()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method protected q()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;
    .registers 2

    .prologue
    .line 66
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->q()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    return-object v0
.end method

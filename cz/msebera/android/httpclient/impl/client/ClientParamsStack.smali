.class public Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;
.super Lcz/msebera/android/httpclient/params/AbstractHttpParams;
.source "ClientParamsStack.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final a:Lcz/msebera/android/httpclient/params/HttpParams;

.field protected final b:Lcz/msebera/android/httpclient/params/HttpParams;

.field protected final c:Lcz/msebera/android/httpclient/params/HttpParams;

.field protected final d:Lcz/msebera/android/httpclient/params/HttpParams;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5

    .prologue
    .line 100
    invoke-direct {p0}, Lcz/msebera/android/httpclient/params/AbstractHttpParams;-><init>()V

    .line 101
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->a:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 102
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->b:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 103
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->c:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 104
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->d:Lcz/msebera/android/httpclient/params/HttpParams;

    .line 105
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;
    .registers 5

    .prologue
    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Setting parameters in a stack is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 193
    const-string/jumbo v0, "Parameter name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    const/4 v0, 0x0

    .line 197
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->d:Lcz/msebera/android/httpclient/params/HttpParams;

    if-eqz v1, :cond_11

    .line 198
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->d:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 200
    :cond_11
    if-nez v0, :cond_1d

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->c:Lcz/msebera/android/httpclient/params/HttpParams;

    if-eqz v1, :cond_1d

    .line 201
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->c:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 203
    :cond_1d
    if-nez v0, :cond_29

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->b:Lcz/msebera/android/httpclient/params/HttpParams;

    if-eqz v1, :cond_29

    .line 204
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->b:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 206
    :cond_29
    if-nez v0, :cond_35

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->a:Lcz/msebera/android/httpclient/params/HttpParams;

    if-eqz v1, :cond_35

    .line 207
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ClientParamsStack;->a:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    :cond_35
    return-object v0
.end method

.class public abstract Lcom/loopj/android/http/BinaryHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "BinaryHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BinaryHttpRH"


# instance fields
.field private mAllowedContentTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "application/octet-stream"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "image/png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "image/gif"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 5
    .param p1, "allowedContentTypes"    # [Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "application/octet-stream"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "image/png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "image/gif"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 78
    if-eqz p1, :cond_25

    .line 79
    iput-object p1, p0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 83
    :goto_24
    return-void

    .line 81
    :cond_25
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "BinaryHttpRH"

    const-string/jumbo v2, "Constructor passed allowedContentTypes was null !"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public constructor <init>([Ljava/lang/String;Landroid/os/Looper;)V
    .registers 6
    .param p1, "allowedContentTypes"    # [Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 93
    invoke-direct {p0, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "application/octet-stream"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "image/png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "image/gif"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 94
    if-eqz p1, :cond_25

    .line 95
    iput-object p1, p0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 99
    :goto_24
    return-void

    .line 97
    :cond_25
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "BinaryHttpRH"

    const-string/jumbo v2, "Constructor passed allowedContentTypes was null !"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method


# virtual methods
.method public getAllowedContentTypes()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public abstract onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
.end method

.method public abstract onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
.end method

.method public final sendResponseMessage(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 16
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v6, 0x0

    .line 119
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v5

    .line 120
    .local v5, "status":Lcz/msebera/android/httpclient/StatusLine;
    const-string/jumbo v7, "Content-Type"

    invoke-interface {p1, v7}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    .line 121
    .local v2, "contentTypeHeaders":[Lcz/msebera/android/httpclient/Header;
    array-length v7, v2

    const/4 v8, 0x1

    if-eq v7, v8, :cond_29

    .line 124
    invoke-interface {v5}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v6

    .line 125
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v7

    new-instance v8, Lcz/msebera/android/httpclient/client/HttpResponseException;

    .line 128
    invoke-interface {v5}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v9

    const-string/jumbo v10, "None, or more than one, Content-Type Header found!"

    invoke-direct {v8, v9, v10}, Lcz/msebera/android/httpclient/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 123
    invoke-virtual {p0, v6, v7, v13, v8}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->sendFailureMessage(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 159
    :goto_28
    return-void

    .line 134
    :cond_29
    aget-object v1, v2, v6

    .line 135
    .local v1, "contentTypeHeader":Lcz/msebera/android/httpclient/Header;
    const/4 v4, 0x0

    .line 136
    .local v4, "foundAllowedContentType":Z
    invoke-virtual {p0}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->getAllowedContentTypes()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    :goto_31
    if-ge v6, v8, :cond_61

    aget-object v0, v7, v6

    .line 138
    .local v0, "anAllowedContentType":Ljava/lang/String;
    :try_start_35
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_3c
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_35 .. :try_end_3c} :catch_43

    move-result v9

    if-eqz v9, :cond_40

    .line 139
    const/4 v4, 0x1

    .line 136
    :cond_40
    :goto_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 141
    :catch_43
    move-exception v3

    .line 142
    .local v3, "e":Ljava/util/regex/PatternSyntaxException;
    sget-object v9, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v10, "BinaryHttpRH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Given pattern is not valid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11, v3}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40

    .line 145
    .end local v0    # "anAllowedContentType":Ljava/lang/String;
    .end local v3    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_61
    if-nez v4, :cond_97

    .line 148
    invoke-interface {v5}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v6

    .line 149
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v7

    new-instance v8, Lcz/msebera/android/httpclient/client/HttpResponseException;

    .line 152
    invoke-interface {v5}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Content-Type ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 153
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") not allowed!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcz/msebera/android/httpclient/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 147
    invoke-virtual {p0, v6, v7, v13, v8}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->sendFailureMessage(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    goto :goto_28

    .line 158
    :cond_97
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendResponseMessage(Lcz/msebera/android/httpclient/HttpResponse;)V

    goto :goto_28
.end method

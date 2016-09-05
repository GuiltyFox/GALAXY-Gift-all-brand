.class public Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
.super Ljava/lang/Object;
.source "HttpClientBuilder.java"


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 204
    const-string/jumbo v0, "cz.msebera.android.httpclient.client"

    const-class v1, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

    .line 205
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/VersionInfo;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcz/msebera/android/httpclient/util/VersionInfo;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_31

    .line 207
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/VersionInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Apache-HttpClient/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (java 1.5)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->a:Ljava/lang/String;

    .line 209
    return-void

    .line 207
    :cond_31
    const-string/jumbo v0, "UNAVAILABLE"

    goto :goto_13
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->b:I

    .line 198
    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->c:I

    .line 217
    return-void
.end method

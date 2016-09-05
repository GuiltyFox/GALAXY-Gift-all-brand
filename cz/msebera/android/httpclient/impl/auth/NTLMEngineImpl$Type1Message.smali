.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;
.super Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"


# instance fields
.field protected a:[B

.field protected b:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 998
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    .line 1001
    :try_start_4
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1003
    invoke-static {p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1005
    if-eqz v1, :cond_29

    const-string/jumbo v3, "ASCII"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_15
    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->a:[B

    .line 1006
    if-eqz v2, :cond_26

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1007
    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :cond_26
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->b:[B
    :try_end_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_28} :catch_2b

    .line 1011
    return-void

    :cond_29
    move-object v1, v0

    .line 1005
    goto :goto_15

    .line 1008
    :catch_2b
    move-exception v0

    .line 1009
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unicode unsupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method b()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x28

    const/4 v1, 0x0

    .line 1021
    .line 1025
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->a(II)V

    .line 1028
    const v0, -0x5df77dff

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->d(I)V

    .line 1053
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->c(I)V

    .line 1054
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->c(I)V

    .line 1057
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->d(I)V

    .line 1060
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->c(I)V

    .line 1061
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->c(I)V

    .line 1064
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->d(I)V

    .line 1067
    const/16 v0, 0x105

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->c(I)V

    .line 1069
    const/16 v0, 0xa28

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->d(I)V

    .line 1071
    const/16 v0, 0xf00

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type1Message;->c(I)V

    .line 1081
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

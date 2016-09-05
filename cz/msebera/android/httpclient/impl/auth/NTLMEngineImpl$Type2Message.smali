.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;
.super Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"


# instance fields
.field protected a:[B

.field protected b:Ljava/lang/String;

.field protected c:[B

.field protected d:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x14

    .line 1094
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>(Ljava/lang/String;I)V

    .line 1111
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->a:[B

    .line 1112
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->a:[B

    const/16 v1, 0x18

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->a([BI)V

    .line 1114
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->a(I)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->d:I

    .line 1116
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->d:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_40

    .line 1117
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NTLM type 2 message indicates no support for Unicode. Flags are: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->d:I

    .line 1119
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1123
    :cond_40
    iput-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->b:Ljava/lang/String;

    .line 1127
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->a()I

    move-result v0

    if-lt v0, v2, :cond_5b

    .line 1128
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->b(I)[B

    move-result-object v0

    .line 1129
    array-length v1, v0

    if-eqz v1, :cond_5b

    .line 1131
    :try_start_51
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UnicodeLittleUnmarked"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->b:Ljava/lang/String;
    :try_end_5b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_51 .. :try_end_5b} :catch_71

    .line 1139
    :cond_5b
    iput-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->c:[B

    .line 1141
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->a()I

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_70

    .line 1142
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->b(I)[B

    move-result-object v0

    .line 1143
    array-length v1, v0

    if-eqz v1, :cond_70

    .line 1144
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->c:[B

    .line 1147
    :cond_70
    return-void

    .line 1132
    :catch_71
    move-exception v0

    .line 1133
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method c()[B
    .registers 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->a:[B

    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1156
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->b:Ljava/lang/String;

    return-object v0
.end method

.method e()[B
    .registers 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->c:[B

    return-object v0
.end method

.method f()I
    .registers 2

    .prologue
    .line 1166
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$Type2Message;->d:I

    return v0
.end method

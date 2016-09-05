.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# instance fields
.field private a:[B

.field private b:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a:[B

    .line 838
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->b:I

    .line 842
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a:[B

    .line 838
    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->b:I

    .line 846
    const-string/jumbo v1, "ASCII"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/EncodingUtils;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/extras/Base64;->a([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a:[B

    .line 849
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a:[B

    array-length v1, v1

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c()[B

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2c

    .line 850
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "NTLM message decoding error - packet too short"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 858
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    .line 853
    :cond_2c
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c()[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_48

    .line 854
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a:[B

    aget-byte v1, v1, v0

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c()[B

    move-result-object v2

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_2a

    .line 855
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "NTLM message expected - instead got unrecognized bytes"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 862
    :cond_48
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a(I)I

    move-result v0

    .line 863
    if-eq v0, p2, :cond_80

    .line 864
    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NTLM type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " message expected - instead got type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 865
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 868
    :cond_80
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a:[B

    array-length v0, v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->b:I

    .line 869
    return-void
.end method


# virtual methods
.method protected a()I
    .registers 2

    .prologue
    .line 881
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->b:I

    return v0
.end method

.method protected a(I)I
    .registers 3

    .prologue
    .line 907
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a:[B

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->b([BI)I

    move-result v0

    return v0
.end method

.method protected a(B)V
    .registers 4

    .prologue
    .line 937
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->b:I

    aput-byte p1, v0, v1

    .line 938
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->b:I

    .line 939
    return-void
.end method

.method protected a(II)V
    .registers 4

    .prologue
    .line 924
    new-array v0, p1, [B

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a:[B

    .line 925
    const/4 v0, 0x0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->b:I

    .line 926
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a([B)V

    .line 927
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->d(I)V

    .line 928
    return-void
.end method

.method protected a([B)V
    .registers 7

    .prologue
    .line 948
    if-nez p1, :cond_3

    .line 955
    :cond_2
    return-void

    .line 951
    :cond_3
    array-length v1, p1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_2

    aget-byte v2, p1, v0

    .line 952
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a:[B

    iget v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->b:I

    aput-byte v2, v3, v4

    .line 953
    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->b:I

    .line 951
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected a([BI)V
    .registers 6

    .prologue
    .line 894
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a:[B

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v1, p2

    if-ge v0, v1, :cond_10

    .line 895
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string/jumbo v1, "NTLM: Message too short"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_10
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a:[B

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p2, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 898
    return-void
.end method

.method b()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 979
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a:[B

    array-length v0, v0

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->b:I

    if-le v0, v1, :cond_1d

    .line 980
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->b:I

    new-array v0, v0, [B

    .line 981
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a:[B

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 986
    :goto_13
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/extras/Base64;->b([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EncodingUtils;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 984
    :cond_1d
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a:[B

    goto :goto_13
.end method

.method protected b(I)[B
    .registers 3

    .prologue
    .line 912
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a:[B

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->c([BI)[B

    move-result-object v0

    return-object v0
.end method

.method protected c(I)V
    .registers 3

    .prologue
    .line 959
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a(B)V

    .line 960
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a(B)V

    .line 961
    return-void
.end method

.method protected d(I)V
    .registers 3

    .prologue
    .line 965
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a(B)V

    .line 966
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a(B)V

    .line 967
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a(B)V

    .line 968
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->a(B)V

    .line 969
    return-void
.end method

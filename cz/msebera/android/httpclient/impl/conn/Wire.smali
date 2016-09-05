.class public Lcz/msebera/android/httpclient/impl/conn/Wire;
.super Ljava/lang/Object;
.source "Wire.java"


# instance fields
.field public a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;)V
    .registers 3

    .prologue
    .line 58
    const-string/jumbo v0, ""

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/conn/Wire;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/Wire;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 54
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/Wire;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 9

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    :goto_8
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_75

    .line 66
    const/16 v2, 0xd

    if-ne v1, v2, :cond_1a

    .line 67
    const-string/jumbo v1, "[\\r]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 68
    :cond_1a
    const/16 v2, 0xa

    if-ne v1, v2, :cond_54

    .line 69
    const-string/jumbo v1, "[\\n]\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string/jumbo v1, "\""

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v4, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/Wire;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/Wire;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_8

    .line 74
    :cond_54
    const/16 v2, 0x20

    if-lt v1, v2, :cond_5c

    const/16 v2, 0x7f

    if-le v1, v2, :cond_70

    .line 75
    :cond_5c
    const-string/jumbo v2, "[0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 79
    :cond_70
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 82
    :cond_75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a7

    .line 83
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0, v4, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/Wire;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/Wire;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a(Ljava/lang/Object;)V

    .line 88
    :cond_a7
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .prologue
    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/Wire;->a([B)V

    .line 134
    return-void
.end method

.method public a([B)V
    .registers 4

    .prologue
    .line 121
    const-string/jumbo v0, "Output"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v0, ">> "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/conn/Wire;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 123
    return-void
.end method

.method public a([BII)V
    .registers 6

    .prologue
    .line 109
    const-string/jumbo v0, "Output"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v0, ">> "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/conn/Wire;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 111
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/Wire;->a:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->a()Z

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 5

    .prologue
    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/Wire;->b([B)V

    .line 139
    return-void
.end method

.method public b([B)V
    .registers 4

    .prologue
    .line 127
    const-string/jumbo v0, "Input"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    const-string/jumbo v0, "<< "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/conn/Wire;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 129
    return-void
.end method

.method public b([BII)V
    .registers 6

    .prologue
    .line 115
    const-string/jumbo v0, "Input"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v0, "<< "

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/conn/Wire;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 117
    return-void
.end method

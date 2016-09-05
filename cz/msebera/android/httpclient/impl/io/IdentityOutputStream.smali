.class public Lcz/msebera/android/httpclient/impl/io/IdentityOutputStream;
.super Ljava/io/OutputStream;
.source "IdentityOutputStream.java"


# instance fields
.field private final a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

.field private b:Z


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;)V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityOutputStream;->b:Z

    .line 62
    const-string/jumbo v0, "Session output buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    .line 63
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityOutputStream;->b:Z

    if-nez v0, :cond_c

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityOutputStream;->b:Z

    .line 74
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a()V

    .line 76
    :cond_c
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a()V

    .line 81
    return-void
.end method

.method public write(I)V
    .registers 4

    .prologue
    .line 98
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityOutputStream;->b:Z

    if-eqz v0, :cond_d

    .line 99
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_d
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a(I)V

    .line 102
    return-void
.end method

.method public write([B)V
    .registers 4

    .prologue
    .line 93
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/IdentityOutputStream;->write([BII)V

    .line 94
    return-void
.end method

.method public write([BII)V
    .registers 6

    .prologue
    .line 85
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityOutputStream;->b:Z

    if-eqz v0, :cond_d

    .line 86
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_d
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityOutputStream;->a:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->a([BII)V

    .line 89
    return-void
.end method

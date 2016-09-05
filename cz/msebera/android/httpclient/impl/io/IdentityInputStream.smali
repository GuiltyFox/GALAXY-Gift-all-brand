.class public Lcz/msebera/android/httpclient/impl/io/IdentityInputStream;
.super Ljava/io/InputStream;
.source "IdentityInputStream.java"


# instance fields
.field private final a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

.field private b:Z


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)V
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityInputStream;->b:Z

    .line 64
    const-string/jumbo v0, "Session input buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityInputStream;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    .line 65
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityInputStream;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    instance-of v0, v0, Lcz/msebera/android/httpclient/io/BufferInfo;

    if-eqz v0, :cond_f

    .line 70
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityInputStream;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    check-cast v0, Lcz/msebera/android/httpclient/io/BufferInfo;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/BufferInfo;->e()I

    move-result v0

    .line 72
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public close()V
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityInputStream;->b:Z

    .line 79
    return-void
.end method

.method public read()I
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityInputStream;->b:Z

    if-eqz v0, :cond_6

    .line 84
    const/4 v0, -0x1

    .line 86
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityInputStream;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a()I

    move-result v0

    goto :goto_5
.end method

.method public read([BII)I
    .registers 5

    .prologue
    .line 92
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityInputStream;->b:Z

    if-eqz v0, :cond_6

    .line 93
    const/4 v0, -0x1

    .line 95
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/IdentityInputStream;->a:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->a([BII)I

    move-result v0

    goto :goto_5
.end method

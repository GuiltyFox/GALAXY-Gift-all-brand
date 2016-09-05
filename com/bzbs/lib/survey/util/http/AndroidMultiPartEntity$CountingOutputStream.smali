.class public Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "AndroidMultiPartEntity.java"


# instance fields
.field private final a:Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$ProgressListener;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$ProgressListener;)V
    .registers 5

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    iput-object p2, p0, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$CountingOutputStream;->a:Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$ProgressListener;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$CountingOutputStream;->b:J

    .line 51
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 6

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 61
    iget-wide v0, p0, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$CountingOutputStream;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$CountingOutputStream;->b:J

    .line 62
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$CountingOutputStream;->a:Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$ProgressListener;

    iget-wide v2, p0, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$CountingOutputStream;->b:J

    invoke-interface {v0, v2, v3}, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$ProgressListener;->a(J)V

    .line 63
    return-void
.end method

.method public write([BII)V
    .registers 8

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 55
    iget-wide v0, p0, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$CountingOutputStream;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$CountingOutputStream;->b:J

    .line 56
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$CountingOutputStream;->a:Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$ProgressListener;

    iget-wide v2, p0, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$CountingOutputStream;->b:J

    invoke-interface {v0, v2, v3}, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$ProgressListener;->a(J)V

    .line 57
    return-void
.end method

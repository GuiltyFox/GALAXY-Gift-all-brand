.class public Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "AndroidMultiPartEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private final listener:Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;

.field private transferred:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "listener"    # Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    iput-object p2, p0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$CountingOutputStream;->listener:Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$CountingOutputStream;->transferred:J

    .line 51
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 61
    iget-wide v0, p0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$CountingOutputStream;->transferred:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$CountingOutputStream;->transferred:J

    .line 62
    iget-object v0, p0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$CountingOutputStream;->listener:Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;

    iget-wide v2, p0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$CountingOutputStream;->transferred:J

    invoke-interface {v0, v2, v3}, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;->transferred(J)V

    .line 63
    return-void
.end method

.method public write([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 55
    iget-wide v0, p0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$CountingOutputStream;->transferred:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$CountingOutputStream;->transferred:J

    .line 56
    iget-object v0, p0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$CountingOutputStream;->listener:Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;

    iget-wide v2, p0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$CountingOutputStream;->transferred:J

    invoke-interface {v0, v2, v3}, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;->transferred(J)V

    .line 57
    return-void
.end method

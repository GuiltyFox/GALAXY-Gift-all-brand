.class public Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;
.super Lorg/apache/http/entity/mime/MultipartEntity;
.source "AndroidMultiPartEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$CountingOutputStream;,
        Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;
    }
.end annotation


# instance fields
.field private final listener:Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;)V
    .registers 2
    .param p1, "listener"    # Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 20
    iput-object p1, p0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;->listener:Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;)V
    .registers 3
    .param p1, "mode"    # Lorg/apache/http/entity/mime/HttpMultipartMode;
    .param p2, "listener"    # Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 25
    iput-object p2, p0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;->listener:Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;)V
    .registers 5
    .param p1, "mode"    # Lorg/apache/http/entity/mime/HttpMultipartMode;
    .param p2, "boundary"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "listener"    # Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 30
    iput-object p4, p0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;->listener:Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;

    .line 31
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$CountingOutputStream;

    iget-object v1, p0, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity;->listener:Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;

    invoke-direct {v0, p1, v1}, Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$CountingOutputStream;-><init>(Ljava/io/OutputStream;Lic/buzzebeeslib/util/http/AndroidMultiPartEntity$ProgressListener;)V

    invoke-super {p0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 36
    return-void
.end method

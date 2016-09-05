.class public Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity;
.super Lorg/apache/http/entity/mime/MultipartEntity;
.source "AndroidMultiPartEntity.java"


# instance fields
.field private final a:Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$ProgressListener;


# direct methods
.method public constructor <init>(Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$ProgressListener;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity;->a:Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$ProgressListener;

    .line 21
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4

    .prologue
    .line 35
    new-instance v0, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$CountingOutputStream;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity;->a:Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$ProgressListener;

    invoke-direct {v0, p1, v1}, Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$CountingOutputStream;-><init>(Ljava/io/OutputStream;Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$ProgressListener;)V

    invoke-super {p0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 36
    return-void
.end method

.class Lcom/facebook/NativeAppCallAttachmentStore$1;
.super Ljava/lang/Object;
.source "NativeAppCallAttachmentStore.java"

# interfaces
.implements Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/NativeAppCallAttachmentStore;->addAttachmentsForCall(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/NativeAppCallAttachmentStore;


# direct methods
.method constructor <init>(Lcom/facebook/NativeAppCallAttachmentStore;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/NativeAppCallAttachmentStore$1;->this$0:Lcom/facebook/NativeAppCallAttachmentStore;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processAttachment(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .registers 6
    .param p1, "attachment"    # Landroid/graphics/Bitmap;
    .param p2, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 70
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    :try_start_5
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 72
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 74
    return-void

    .line 71
    :catchall_10
    move-exception v1

    .line 72
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 73
    throw v1
.end method

.method public bridge synthetic processAttachment(Ljava/lang/Object;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/NativeAppCallAttachmentStore$1;->processAttachment(Landroid/graphics/Bitmap;Ljava/io/File;)V

    return-void
.end method

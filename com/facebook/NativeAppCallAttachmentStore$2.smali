.class Lcom/facebook/NativeAppCallAttachmentStore$2;
.super Ljava/lang/Object;
.source "NativeAppCallAttachmentStore.java"

# interfaces
.implements Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/NativeAppCallAttachmentStore;->addAttachmentFilesForCall(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V
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
        "Ljava/io/File;",
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
    iput-object p1, p0, Lcom/facebook/NativeAppCallAttachmentStore$2;->this$0:Lcom/facebook/NativeAppCallAttachmentStore;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processAttachment(Ljava/io/File;Ljava/io/File;)V
    .registers 9
    .param p1, "attachment"    # Ljava/io/File;
    .param p2, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 100
    .local v1, "inputStream":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_2a

    .line 102
    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    .local v2, "inputStream":Ljava/io/FileInputStream;
    const/16 v5, 0x400

    :try_start_d
    new-array v0, v5, [B

    .line 104
    .local v0, "buffer":[B
    :goto_f
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_21

    move-result v3

    .local v3, "len":I
    if-gtz v3, :cond_1c

    .line 108
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 109
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 111
    return-void

    .line 105
    :cond_1c
    const/4 v5, 0x0

    :try_start_1d
    invoke-virtual {v4, v0, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_f

    .line 107
    .end local v0    # "buffer":[B
    .end local v3    # "len":I
    :catchall_21
    move-exception v5

    move-object v1, v2

    .line 108
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v1    # "inputStream":Ljava/io/FileInputStream;
    :goto_23
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 109
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 110
    throw v5

    .line 107
    :catchall_2a
    move-exception v5

    goto :goto_23
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
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/NativeAppCallAttachmentStore$2;->processAttachment(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

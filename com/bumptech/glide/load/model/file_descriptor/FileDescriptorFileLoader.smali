.class public Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader;
.super Lcom/bumptech/glide/load/model/FileLoader;
.source "FileDescriptorFileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/FileLoader",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/model/FileLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 43
    return-void
.end method

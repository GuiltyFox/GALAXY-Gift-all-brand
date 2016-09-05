.class public Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader;
.super Lcom/bumptech/glide/load/model/StringLoader;
.source "FileDescriptorStringLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/StringLoader",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader",
        "<",
        "Ljava/lang/String;",
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
    .line 40
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/model/StringLoader;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 41
    return-void
.end method

.class public Lcom/bumptech/glide/load/model/ImageVideoWrapper;
.super Ljava/lang/Object;
.source "ImageVideoWrapper.java"


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->a:Ljava/io/InputStream;

    .line 16
    iput-object p2, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->b:Landroid/os/ParcelFileDescriptor;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public b()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoWrapper;->b:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

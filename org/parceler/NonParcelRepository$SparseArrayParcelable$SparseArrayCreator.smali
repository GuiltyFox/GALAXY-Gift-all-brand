.class final Lorg/parceler/NonParcelRepository$SparseArrayParcelable$SparseArrayCreator;
.super Ljava/lang/Object;
.source "NonParcelRepository.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lorg/parceler/NonParcelRepository$SparseArrayParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/parceler/NonParcelRepository$1;)V
    .registers 2

    .prologue
    .line 688
    invoke-direct {p0}, Lorg/parceler/NonParcelRepository$SparseArrayParcelable$SparseArrayCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lorg/parceler/NonParcelRepository$SparseArrayParcelable;
    .registers 3

    .prologue
    .line 692
    new-instance v0, Lorg/parceler/NonParcelRepository$SparseArrayParcelable;

    invoke-direct {v0, p1}, Lorg/parceler/NonParcelRepository$SparseArrayParcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lorg/parceler/NonParcelRepository$SparseArrayParcelable;
    .registers 3

    .prologue
    .line 697
    new-array v0, p1, [Lorg/parceler/NonParcelRepository$SparseArrayParcelable;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 688
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$SparseArrayParcelable$SparseArrayCreator;->a(Landroid/os/Parcel;)Lorg/parceler/NonParcelRepository$SparseArrayParcelable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 688
    invoke-virtual {p0, p1}, Lorg/parceler/NonParcelRepository$SparseArrayParcelable$SparseArrayCreator;->a(I)[Lorg/parceler/NonParcelRepository$SparseArrayParcelable;

    move-result-object v0

    return-object v0
.end method

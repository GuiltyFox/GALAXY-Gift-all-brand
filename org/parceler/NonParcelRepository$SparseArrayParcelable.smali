.class public final Lorg/parceler/NonParcelRepository$SparseArrayParcelable;
.super Lorg/parceler/NonParcelRepository$ConverterParcelable;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/NonParcelRepository$ConverterParcelable",
        "<",
        "Landroid/util/SparseArray;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lorg/parceler/NonParcelRepository$SparseArrayParcelable$SparseArrayCreator;

.field private static final a:Lorg/parceler/converter/SparseArrayParcelConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 664
    new-instance v0, Lorg/parceler/NonParcelRepository$SparseArrayParcelable$1;

    invoke-direct {v0}, Lorg/parceler/NonParcelRepository$SparseArrayParcelable$1;-><init>()V

    sput-object v0, Lorg/parceler/NonParcelRepository$SparseArrayParcelable;->a:Lorg/parceler/converter/SparseArrayParcelConverter;

    .line 686
    new-instance v0, Lorg/parceler/NonParcelRepository$SparseArrayParcelable$SparseArrayCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/NonParcelRepository$SparseArrayParcelable$SparseArrayCreator;-><init>(Lorg/parceler/NonParcelRepository$1;)V

    sput-object v0, Lorg/parceler/NonParcelRepository$SparseArrayParcelable;->CREATOR:Lorg/parceler/NonParcelRepository$SparseArrayParcelable$SparseArrayCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 678
    sget-object v0, Lorg/parceler/NonParcelRepository$SparseArrayParcelable;->a:Lorg/parceler/converter/SparseArrayParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Landroid/os/Parcel;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 679
    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;)V
    .registers 4

    .prologue
    .line 682
    sget-object v0, Lorg/parceler/NonParcelRepository$SparseArrayParcelable;->a:Lorg/parceler/converter/SparseArrayParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Ljava/lang/Object;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 683
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 662
    invoke-super {p0}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .prologue
    .line 662
    invoke-super {p0, p1, p2}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

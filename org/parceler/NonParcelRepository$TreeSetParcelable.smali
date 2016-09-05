.class public final Lorg/parceler/NonParcelRepository$TreeSetParcelable;
.super Lorg/parceler/NonParcelRepository$ConverterParcelable;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/NonParcelRepository$ConverterParcelable",
        "<",
        "Ljava/util/Set;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lorg/parceler/NonParcelRepository$TreeSetParcelable$TreeSetParcelableCreator;

.field private static final a:Lorg/parceler/converter/TreeSetParcelConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 544
    new-instance v0, Lorg/parceler/NonParcelRepository$TreeSetParcelable$1;

    invoke-direct {v0}, Lorg/parceler/NonParcelRepository$TreeSetParcelable$1;-><init>()V

    sput-object v0, Lorg/parceler/NonParcelRepository$TreeSetParcelable;->a:Lorg/parceler/converter/TreeSetParcelConverter;

    .line 566
    new-instance v0, Lorg/parceler/NonParcelRepository$TreeSetParcelable$TreeSetParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/NonParcelRepository$TreeSetParcelable$TreeSetParcelableCreator;-><init>(Lorg/parceler/NonParcelRepository$1;)V

    sput-object v0, Lorg/parceler/NonParcelRepository$TreeSetParcelable;->CREATOR:Lorg/parceler/NonParcelRepository$TreeSetParcelable$TreeSetParcelableCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 558
    sget-object v0, Lorg/parceler/NonParcelRepository$TreeSetParcelable;->a:Lorg/parceler/converter/TreeSetParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Landroid/os/Parcel;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 559
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 4

    .prologue
    .line 562
    sget-object v0, Lorg/parceler/NonParcelRepository$TreeSetParcelable;->a:Lorg/parceler/converter/TreeSetParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Ljava/lang/Object;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 563
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 542
    invoke-super {p0}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .prologue
    .line 542
    invoke-super {p0, p1, p2}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

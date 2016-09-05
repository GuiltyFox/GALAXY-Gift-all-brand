.class public final Lorg/parceler/NonParcelRepository$LinkedHashSetParcelable;
.super Lorg/parceler/NonParcelRepository$ConverterParcelable;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/NonParcelRepository$ConverterParcelable",
        "<",
        "Ljava/util/LinkedHashSet;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lorg/parceler/NonParcelRepository$LinkedHashSetParcelable$LinkedHashSetParcelableCreator;

.field private static final a:Lorg/parceler/converter/LinkedHashSetParcelConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 584
    new-instance v0, Lorg/parceler/NonParcelRepository$LinkedHashSetParcelable$1;

    invoke-direct {v0}, Lorg/parceler/NonParcelRepository$LinkedHashSetParcelable$1;-><init>()V

    sput-object v0, Lorg/parceler/NonParcelRepository$LinkedHashSetParcelable;->a:Lorg/parceler/converter/LinkedHashSetParcelConverter;

    .line 606
    new-instance v0, Lorg/parceler/NonParcelRepository$LinkedHashSetParcelable$LinkedHashSetParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/NonParcelRepository$LinkedHashSetParcelable$LinkedHashSetParcelableCreator;-><init>(Lorg/parceler/NonParcelRepository$1;)V

    sput-object v0, Lorg/parceler/NonParcelRepository$LinkedHashSetParcelable;->CREATOR:Lorg/parceler/NonParcelRepository$LinkedHashSetParcelable$LinkedHashSetParcelableCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 598
    sget-object v0, Lorg/parceler/NonParcelRepository$LinkedHashSetParcelable;->a:Lorg/parceler/converter/LinkedHashSetParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Landroid/os/Parcel;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 599
    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashSet;)V
    .registers 4

    .prologue
    .line 602
    sget-object v0, Lorg/parceler/NonParcelRepository$LinkedHashSetParcelable;->a:Lorg/parceler/converter/LinkedHashSetParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Ljava/lang/Object;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 603
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 582
    invoke-super {p0}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .prologue
    .line 582
    invoke-super {p0, p1, p2}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.class public final Lorg/parceler/NonParcelRepository$LinkedHashMapParcelable;
.super Lorg/parceler/NonParcelRepository$ConverterParcelable;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/NonParcelRepository$ConverterParcelable",
        "<",
        "Ljava/util/LinkedHashMap;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lorg/parceler/NonParcelRepository$LinkedHashMapParcelable$LinkedHashMapParcelableCreator;

.field private static final a:Lorg/parceler/converter/LinkedHashMapParcelConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 402
    new-instance v0, Lorg/parceler/NonParcelRepository$LinkedHashMapParcelable$1;

    invoke-direct {v0}, Lorg/parceler/NonParcelRepository$LinkedHashMapParcelable$1;-><init>()V

    sput-object v0, Lorg/parceler/NonParcelRepository$LinkedHashMapParcelable;->a:Lorg/parceler/converter/LinkedHashMapParcelConverter;

    .line 434
    new-instance v0, Lorg/parceler/NonParcelRepository$LinkedHashMapParcelable$LinkedHashMapParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/NonParcelRepository$LinkedHashMapParcelable$LinkedHashMapParcelableCreator;-><init>(Lorg/parceler/NonParcelRepository$1;)V

    sput-object v0, Lorg/parceler/NonParcelRepository$LinkedHashMapParcelable;->CREATOR:Lorg/parceler/NonParcelRepository$LinkedHashMapParcelable$LinkedHashMapParcelableCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 426
    sget-object v0, Lorg/parceler/NonParcelRepository$LinkedHashMapParcelable;->a:Lorg/parceler/converter/LinkedHashMapParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Landroid/os/Parcel;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 427
    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .registers 4

    .prologue
    .line 430
    sget-object v0, Lorg/parceler/NonParcelRepository$LinkedHashMapParcelable;->a:Lorg/parceler/converter/LinkedHashMapParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Ljava/lang/Object;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 431
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 400
    invoke-super {p0}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .prologue
    .line 400
    invoke-super {p0, p1, p2}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

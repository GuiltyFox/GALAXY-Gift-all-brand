.class public final Lorg/parceler/NonParcelRepository$LongParcelable;
.super Lorg/parceler/NonParcelRepository$ConverterParcelable;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/NonParcelRepository$ConverterParcelable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lorg/parceler/NonParcelRepository$LongParcelable$LongParcelableCreator;

.field private static final a:Lorg/parceler/converter/NullableParcelConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/parceler/converter/NullableParcelConverter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 784
    new-instance v0, Lorg/parceler/NonParcelRepository$LongParcelable$1;

    invoke-direct {v0}, Lorg/parceler/NonParcelRepository$LongParcelable$1;-><init>()V

    sput-object v0, Lorg/parceler/NonParcelRepository$LongParcelable;->a:Lorg/parceler/converter/NullableParcelConverter;

    .line 806
    new-instance v0, Lorg/parceler/NonParcelRepository$LongParcelable$LongParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/NonParcelRepository$LongParcelable$LongParcelableCreator;-><init>(Lorg/parceler/NonParcelRepository$1;)V

    sput-object v0, Lorg/parceler/NonParcelRepository$LongParcelable;->CREATOR:Lorg/parceler/NonParcelRepository$LongParcelable$LongParcelableCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 798
    sget-object v0, Lorg/parceler/NonParcelRepository$LongParcelable;->a:Lorg/parceler/converter/NullableParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Landroid/os/Parcel;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 799
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .registers 4

    .prologue
    .line 802
    sget-object v0, Lorg/parceler/NonParcelRepository$LongParcelable;->a:Lorg/parceler/converter/NullableParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Ljava/lang/Object;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 803
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 782
    invoke-super {p0}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .prologue
    .line 782
    invoke-super {p0, p1, p2}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

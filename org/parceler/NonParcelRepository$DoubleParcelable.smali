.class public final Lorg/parceler/NonParcelRepository$DoubleParcelable;
.super Lorg/parceler/NonParcelRepository$ConverterParcelable;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/NonParcelRepository$ConverterParcelable",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lorg/parceler/NonParcelRepository$DoubleParcelable$DoubleParcelableCreator;

.field private static final a:Lorg/parceler/converter/NullableParcelConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/parceler/converter/NullableParcelConverter",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 824
    new-instance v0, Lorg/parceler/NonParcelRepository$DoubleParcelable$1;

    invoke-direct {v0}, Lorg/parceler/NonParcelRepository$DoubleParcelable$1;-><init>()V

    sput-object v0, Lorg/parceler/NonParcelRepository$DoubleParcelable;->a:Lorg/parceler/converter/NullableParcelConverter;

    .line 846
    new-instance v0, Lorg/parceler/NonParcelRepository$DoubleParcelable$DoubleParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/NonParcelRepository$DoubleParcelable$DoubleParcelableCreator;-><init>(Lorg/parceler/NonParcelRepository$1;)V

    sput-object v0, Lorg/parceler/NonParcelRepository$DoubleParcelable;->CREATOR:Lorg/parceler/NonParcelRepository$DoubleParcelable$DoubleParcelableCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 838
    sget-object v0, Lorg/parceler/NonParcelRepository$DoubleParcelable;->a:Lorg/parceler/converter/NullableParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Landroid/os/Parcel;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 839
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;)V
    .registers 4

    .prologue
    .line 842
    sget-object v0, Lorg/parceler/NonParcelRepository$DoubleParcelable;->a:Lorg/parceler/converter/NullableParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Ljava/lang/Object;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 843
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 822
    invoke-super {p0}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .prologue
    .line 822
    invoke-super {p0, p1, p2}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

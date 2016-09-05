.class public final Lorg/parceler/NonParcelRepository$ListParcelable;
.super Lorg/parceler/NonParcelRepository$ConverterParcelable;
.source "NonParcelRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/parceler/NonParcelRepository$ConverterParcelable",
        "<",
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lorg/parceler/NonParcelRepository$ListParcelable$ListParcelableCreator;

.field private static final a:Lorg/parceler/converter/ArrayListParcelConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 271
    new-instance v0, Lorg/parceler/NonParcelRepository$ListParcelable$1;

    invoke-direct {v0}, Lorg/parceler/NonParcelRepository$ListParcelable$1;-><init>()V

    sput-object v0, Lorg/parceler/NonParcelRepository$ListParcelable;->a:Lorg/parceler/converter/ArrayListParcelConverter;

    .line 293
    new-instance v0, Lorg/parceler/NonParcelRepository$ListParcelable$ListParcelableCreator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/parceler/NonParcelRepository$ListParcelable$ListParcelableCreator;-><init>(Lorg/parceler/NonParcelRepository$1;)V

    sput-object v0, Lorg/parceler/NonParcelRepository$ListParcelable;->CREATOR:Lorg/parceler/NonParcelRepository$ListParcelable$ListParcelableCreator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    .line 285
    sget-object v0, Lorg/parceler/NonParcelRepository$ListParcelable;->a:Lorg/parceler/converter/ArrayListParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Landroid/os/Parcel;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 286
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4

    .prologue
    .line 289
    sget-object v0, Lorg/parceler/NonParcelRepository$ListParcelable;->a:Lorg/parceler/converter/ArrayListParcelConverter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/parceler/NonParcelRepository$ConverterParcelable;-><init>(Ljava/lang/Object;Lorg/parceler/TypeRangeParcelConverter;Lorg/parceler/NonParcelRepository$1;)V

    .line 290
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 269
    invoke-super {p0}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .prologue
    .line 269
    invoke-super {p0, p1, p2}, Lorg/parceler/NonParcelRepository$ConverterParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

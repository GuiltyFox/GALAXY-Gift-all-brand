.class public Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;
.super Ljava/lang/Object;
.source "UpdatedPoint.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
    value = .enum Lorg/parceler/Parcel$Serialization;->BEAN:Lorg/parceler/Parcel$Serialization;
.end annotation


# static fields
.field static final FIELD_POStringS:Ljava/lang/String; = "points"

.field static final FIELD_TIME:Ljava/lang/String; = "time"


# instance fields
.field mPoString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "points"
    .end annotation
.end field

.field mTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public getPoString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->mPoString:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public setPoString(Ljava/lang/String;)V
    .registers 2
    .param p1, "poString"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->mPoString:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->mTime:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "poString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->mPoString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->mTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

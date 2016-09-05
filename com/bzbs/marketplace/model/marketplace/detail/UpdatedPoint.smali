.class public Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;
.super Ljava/lang/Object;
.source "UpdatedPoint.java"


# static fields
.field public static final FIELD_POStringS:Ljava/lang/String; = "points"

.field public static final FIELD_TIME:Ljava/lang/String; = "time"


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "points"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "time"
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
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPoString(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->b:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/UpdatedPoint;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/bzbs/marketplace/model/marketplace/detail/Picture;
.super Ljava/lang/Object;
.source "Picture.java"


# static fields
.field public static final FIELD_CAMPAIGN_ID:Ljava/lang/String; = "CampaignID"

.field public static final FIELD_CAPTION:Ljava/lang/String; = "Caption"

.field public static final FIELD_FULL_IMAGE_URL:Ljava/lang/String; = "FullImageUrl"

.field public static final FIELD_ID:Ljava/lang/String; = "ID"

.field public static final FIELD_IMAGE_URL:Ljava/lang/String; = "ImageUrl"

.field public static final FIELD_SEQUENCE:Ljava/lang/String; = "Sequence"


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "ImageUrl"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "ID"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "CampaignID"
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "FullImageUrl"
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "Sequence"
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "Caption"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public getCampaignID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCaption()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getFullImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSequence()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setCampaignID(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->c:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setCaption(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->f:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setFullImageUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->d:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->a:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setSequence(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->e:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "imageUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iD = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", campaignID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fullImageUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sequence = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", caption = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Picture;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;
.super Ljava/lang/Object;
.source "DashboardModel.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

.field private cat:Ljava/lang/String;

.field private ga_label:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image_url:Ljava/lang/String;

.field private imgtype:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)V
    .registers 3

    .prologue
    .line 142
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->a:Lcom/bzbs/marketplace/model/dashboard/DashboardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->ga_label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->cat:Ljava/lang/String;

    return-object v0
.end method

.method public getGa_label()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->ga_label:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage_url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getImgtype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->imgtype:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCat(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 193
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->cat:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setGa_label(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->ga_label:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->id:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setImage_url(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 157
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->image_url:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setImgtype(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->imgtype:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;->type:Ljava/lang/String;

    .line 166
    return-void
.end method

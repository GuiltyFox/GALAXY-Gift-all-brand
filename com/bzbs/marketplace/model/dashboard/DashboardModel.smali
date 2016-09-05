.class public Lcom/bzbs/marketplace/model/dashboard/DashboardModel;
.super Ljava/lang/Object;
.source "DashboardModel.java"


# instance fields
.field private agency_id:Ljava/lang/String;

.field private and_ns:Ljava/lang/String;

.field private cat:Ljava/lang/String;

.field private ga_label:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image_url:Ljava/lang/String;

.field private imgtype:Ljava/lang/String;

.field private line1:Ljava/lang/String;

.field private line2:Ljava/lang/String;

.field private menu:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private subcampaigndetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->imgtype:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->image_url:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->type:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->line1:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->line2:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->id:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->cat:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->url:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->menu:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->size:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->and_ns:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->agency_id:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->ga_label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAgency_id()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->agency_id:Ljava/lang/String;

    return-object v0
.end method

.method public getAnd_ns()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->and_ns:Ljava/lang/String;

    return-object v0
.end method

.method public getCat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->cat:Ljava/lang/String;

    return-object v0
.end method

.method public getGa_label()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->ga_label:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->id:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->id:Ljava/lang/String;

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->id:Ljava/lang/String;

    goto :goto_9
.end method

.method public getImage_url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getImgtype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->imgtype:Ljava/lang/String;

    return-object v0
.end method

.method public getLine1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->line1:Ljava/lang/String;

    return-object v0
.end method

.method public getLine2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->line2:Ljava/lang/String;

    return-object v0
.end method

.method public getMenu()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->menu:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getSubcampaigndetails()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->subcampaigndetails:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAgency_id(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->agency_id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setAnd_ns(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->and_ns:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setCat(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->cat:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setGa_label(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->ga_label:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->id:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setImage_url(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->image_url:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setImgtype(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->imgtype:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setLine1(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->line1:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setLine2(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->line2:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setMenu(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->menu:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->size:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setSubcampaigndetails(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/dashboard/DashboardModel$SubcampaigndetailsEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->subcampaigndetails:Ljava/util/List;

    .line 116
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->type:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardModel;->url:Ljava/lang/String;

    .line 132
    return-void
.end method

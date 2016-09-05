.class public Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;
.super Ljava/lang/Object;
.source "DashboardDataModel.java"


# instance fields
.field private listDashboard:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/dashboard/DashboardModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListDashboard()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/dashboard/DashboardModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->listDashboard:Ljava/util/List;

    return-object v0
.end method

.method public setListDashboard(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/dashboard/DashboardModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    iput-object p1, p0, Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;->listDashboard:Ljava/util/List;

    .line 11
    return-void
.end method

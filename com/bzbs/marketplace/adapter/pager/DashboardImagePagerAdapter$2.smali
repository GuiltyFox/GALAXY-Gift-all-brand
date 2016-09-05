.class Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "DashboardImagePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;->a(Lcom/bzbs/marketplace/model/dashboard/DashboardModel;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/bzbs/marketplace/model/dashboard/DashboardDataModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter$2;->a:Lcom/bzbs/marketplace/adapter/pager/DashboardImagePagerAdapter;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

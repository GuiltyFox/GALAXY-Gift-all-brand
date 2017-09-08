.class Lcom/samsung/privilege/activity/MainPagerActivity$22;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->i()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2

    .prologue
    .line 1911
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$22;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 1914
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$22;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    const v1, 0x7f100182

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1915
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$22;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    const v1, 0x7f100183

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1916
    return-void
.end method

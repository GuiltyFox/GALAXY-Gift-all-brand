.class Lcom/samsung/privilege/activity/MainPagerActivity$34;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->p()Ljava/lang/Runnable;
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2

    .prologue
    .line 2141
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$34;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$34;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    const v1, 0x7f100183

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 2145
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->e(I)V

    .line 2146
    return-void
.end method

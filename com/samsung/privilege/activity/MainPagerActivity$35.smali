.class Lcom/samsung/privilege/activity/MainPagerActivity$35;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$35;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2051
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$35;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    const v2, 0x7f10016a

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 2052
    .local v0, "drawer_layout":Landroid/support/v4/widget/DrawerLayout;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 2053
    return-void
.end method

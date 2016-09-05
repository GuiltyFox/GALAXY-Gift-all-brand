.class Lcom/samsung/privilege/activity/MainPagerActivity$7$3;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity$7;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity$7;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity$7;)V
    .registers 2

    .prologue
    .line 688
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7$3;->a:Lcom/samsung/privilege/activity/MainPagerActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7$3;->a:Lcom/samsung/privilege/activity/MainPagerActivity$7;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    const v1, 0x7f1000b4

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 691
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7$3;->a:Lcom/samsung/privilege/activity/MainPagerActivity$7;

    iget-object v1, v1, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 692
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7$3;->a:Lcom/samsung/privilege/activity/MainPagerActivity$7;

    iget-object v1, v1, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->openContextMenu(Landroid/view/View;)V

    .line 693
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7$3;->a:Lcom/samsung/privilege/activity/MainPagerActivity$7;

    iget-object v1, v1, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 694
    return-void
.end method

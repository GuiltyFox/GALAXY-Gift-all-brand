.class Lcom/samsung/privilege/activity/InAppsFragment$3;
.super Ljava/lang/Object;
.source "InAppsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/InAppsFragment;->ProcessJsonInApp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/InAppsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/InAppsFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/InAppsFragment$3;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 310
    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment$3;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    new-instance v1, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;

    iget-object v2, p0, Lcom/samsung/privilege/activity/InAppsFragment$3;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    iget-object v3, p0, Lcom/samsung/privilege/activity/InAppsFragment$3;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/InAppsFragment$3;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    # getter for: Lcom/samsung/privilege/activity/InAppsFragment;->gInAppItems:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/privilege/activity/InAppsFragment;->access$4(Lcom/samsung/privilege/activity/InAppsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;-><init>(Lcom/samsung/privilege/activity/InAppsFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/InAppsFragment;->access$6(Lcom/samsung/privilege/activity/InAppsFragment;Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;)V

    .line 311
    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment$3;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    # getter for: Lcom/samsung/privilege/activity/InAppsFragment;->gInAppItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/privilege/activity/InAppsFragment;->access$4(Lcom/samsung/privilege/activity/InAppsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment$3;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    # getter for: Lcom/samsung/privilege/activity/InAppsFragment;->gInAppItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/privilege/activity/InAppsFragment;->access$4(Lcom/samsung/privilege/activity/InAppsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_40

    .line 312
    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment$3;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    # getter for: Lcom/samsung/privilege/activity/InAppsFragment;->gridInApps:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/InAppsFragment;->access$7(Lcom/samsung/privilege/activity/InAppsFragment;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/InAppsFragment$3;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    # getter for: Lcom/samsung/privilege/activity/InAppsFragment;->gAdapter:Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;
    invoke-static {v1}, Lcom/samsung/privilege/activity/InAppsFragment;->access$8(Lcom/samsung/privilege/activity/InAppsFragment;)Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 316
    :goto_3f
    return-void

    .line 314
    :cond_40
    iget-object v0, p0, Lcom/samsung/privilege/activity/InAppsFragment$3;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    # getter for: Lcom/samsung/privilege/activity/InAppsFragment;->gridInApps:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/InAppsFragment;->access$7(Lcom/samsung/privilege/activity/InAppsFragment;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_3f
.end method

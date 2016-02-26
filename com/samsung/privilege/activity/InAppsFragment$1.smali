.class Lcom/samsung/privilege/activity/InAppsFragment$1;
.super Ljava/lang/Object;
.source "InAppsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/InAppsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/InAppsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/InAppsFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/InAppsFragment$1;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 17
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v6, p0, Lcom/samsung/privilege/activity/InAppsFragment$1;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    # getter for: Lcom/samsung/privilege/activity/InAppsFragment;->gInAppItems:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/samsung/privilege/activity/InAppsFragment;->access$4(Lcom/samsung/privilege/activity/InAppsFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2f

    .line 117
    iget-object v6, p0, Lcom/samsung/privilege/activity/InAppsFragment$1;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    # getter for: Lcom/samsung/privilege/activity/InAppsFragment;->gInAppItems:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/samsung/privilege/activity/InAppsFragment;->access$4(Lcom/samsung/privilege/activity/InAppsFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/privilege/bean/InAppItem;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_8d

    .line 118
    .local v5, "inAppItem":Lcom/samsung/privilege/bean/InAppItem;
    if-eqz v5, :cond_2f

    .line 121
    :try_start_1a
    iget-object v6, p0, Lcom/samsung/privilege/activity/InAppsFragment$1;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v5, Lcom/samsung/privilege/bean/InAppItem;->uri_playstore:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, "LaunchApp":Landroid/content/Intent;
    iget-object v6, p0, Lcom/samsung/privilege/activity/InAppsFragment$1;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    invoke-virtual {v6, v0}, Lcom/samsung/privilege/activity/InAppsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2f} :catch_30

    .line 141
    .end local v0    # "LaunchApp":Landroid/content/Intent;
    .end local v5    # "inAppItem":Lcom/samsung/privilege/bean/InAppItem;
    :cond_2f
    :goto_2f
    return-void

    .line 123
    .restart local v5    # "inAppItem":Lcom/samsung/privilege/bean/InAppItem;
    :catch_30
    move-exception v3

    .line 126
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_31
    iget-object v6, p0, Lcom/samsung/privilege/activity/InAppsFragment$1;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/InAppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v5, Lcom/samsung/privilege/bean/InAppItem;->uri_playstore:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 127
    .local v1, "LaunchIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/samsung/privilege/activity/InAppsFragment$1;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    invoke-virtual {v6, v1}, Lcom/samsung/privilege/activity/InAppsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_46} :catch_47
    .catch Landroid/content/ActivityNotFoundException; {:try_start_31 .. :try_end_46} :catch_6a

    goto :goto_2f

    .line 128
    .end local v1    # "LaunchIntent":Landroid/content/Intent;
    :catch_47
    move-exception v4

    .line 129
    .local v4, "ex1":Ljava/lang/Exception;
    :try_start_48
    iget-object v6, p0, Lcom/samsung/privilege/activity/InAppsFragment$1;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "market://details?id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/samsung/privilege/bean/InAppItem;->uri_playstore:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/InAppsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_69
    .catch Landroid/content/ActivityNotFoundException; {:try_start_48 .. :try_end_69} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_69} :catch_8d

    goto :goto_2f

    .line 131
    .end local v4    # "ex1":Ljava/lang/Exception;
    :catch_6a
    move-exception v2

    .line 132
    .local v2, "anfe":Landroid/content/ActivityNotFoundException;
    :try_start_6b
    iget-object v6, p0, Lcom/samsung/privilege/activity/InAppsFragment$1;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://play.google.com/store/apps/details?id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/samsung/privilege/bean/InAppItem;->uri_playstore:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/InAppsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_8c} :catch_8d

    goto :goto_2f

    .line 138
    .end local v2    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v5    # "inAppItem":Lcom/samsung/privilege/bean/InAppItem;
    :catch_8d
    move-exception v3

    .line 139
    .restart local v3    # "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/samsung/privilege/activity/InAppsFragment$1;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    iget-object v7, p0, Lcom/samsung/privilege/activity/InAppsFragment$1;->this$0:Lcom/samsung/privilege/activity/InAppsFragment;

    const v8, 0x7f090348

    invoke-virtual {v7, v8}, Lcom/samsung/privilege/activity/InAppsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/samsung/privilege/activity/InAppsFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/samsung/privilege/activity/InAppsFragment;->access$3(Lcom/samsung/privilege/activity/InAppsFragment;Ljava/lang/String;)V

    goto :goto_2f
.end method

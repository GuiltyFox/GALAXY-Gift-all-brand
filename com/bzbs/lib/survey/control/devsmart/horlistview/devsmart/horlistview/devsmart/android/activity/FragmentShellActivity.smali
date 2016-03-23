.class public Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/activity/FragmentShellActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FragmentShellActivity.java"

# interfaces
.implements Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/activity/NavigationDelegate;


# static fields
.field public static final EXTRA_FRAGMENTARGS:Ljava/lang/String; = "fragargs"

.field public static final EXTRA_FRAGMENTNAME:Ljava/lang/String; = "fragname"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "orient"


# instance fields
.field private mBaseFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "fragmentArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/activity/FragmentShellActivity;->createIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "fragmentArgs"    # Landroid/os/Bundle;
    .param p3, "screenOrientationPortrait"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/activity/FragmentShellActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "retval":Landroid/content/Intent;
    const-string/jumbo v1, "fragname"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string/jumbo v1, "fragargs"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 57
    const-string/jumbo v1, "orient"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/activity/FragmentShellActivity;->requestWindowFeature(I)Z

    .line 26
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/activity/FragmentShellActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 27
    .local v4, "launchIntent":Landroid/content/Intent;
    const-string/jumbo v7, "fragname"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "fragclassname":Ljava/lang/String;
    const-string/jumbo v7, "fragargs"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 29
    .local v1, "fragargs":Landroid/os/Bundle;
    const-string/jumbo v7, "orient"

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 30
    .local v5, "orient":I
    invoke-virtual {p0, v5}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/activity/FragmentShellActivity;->setRequestedOrientation(I)V

    .line 33
    :try_start_24
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/activity/FragmentShellActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 34
    .local v3, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    iput-object v7, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/activity/FragmentShellActivity;->mBaseFragment:Landroid/support/v4/app/Fragment;

    .line 35
    iget-object v7, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/activity/FragmentShellActivity;->mBaseFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v7, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/activity/FragmentShellActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 38
    .local v6, "tr":Landroid/support/v4/app/FragmentTransaction;
    const v7, 0x1020002

    iget-object v8, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/activity/FragmentShellActivity;->mBaseFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 39
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_4c} :catch_4d

    .line 46
    .end local v3    # "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "tr":Landroid/support/v4/app/FragmentTransaction;
    :goto_4c
    return-void

    .line 41
    :catch_4d
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-class v7, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/activity/FragmentShellActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/activity/FragmentShellActivity;->finish()V

    goto :goto_4c
.end method

.method public onNavigateBack()V
    .registers 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/activity/FragmentShellActivity;->finish()V

    .line 65
    return-void
.end method

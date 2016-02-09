.class Lcom/samsung/privilege/activity/MainMenuFragment$2;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$2;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 332
    const-string v0, "OAT"

    const-string v1, "Verify ============= Naja"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$2;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const/4 v1, 0x1

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->getVerify(Z)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$27(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    .line 334
    return-void
.end method

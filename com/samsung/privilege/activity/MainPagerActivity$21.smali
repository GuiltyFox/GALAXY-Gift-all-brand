.class Lcom/samsung/privilege/activity/MainPagerActivity$21;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->doChangeLanguage(Landroid/view/View;)V
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
    .line 1592
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$21;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$21;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1108"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1598
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$21;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    const-string/jumbo v1, "1108"

    # invokes: Lcom/samsung/privilege/activity/MainPagerActivity;->saveLanguageToServer(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$1000(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V

    .line 1600
    :cond_1b
    return-void
.end method

.class Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$2;
.super Ljava/lang/Object;
.source "RequestHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$2;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;

    .line 985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$2;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->access$1(Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;)Lcom/samsung/privilege/activity/RequestHelpActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$2;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->access$1(Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;)Lcom/samsung/privilege/activity/RequestHelpActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/util/StickerUtil;->GetStickerSets(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->showToast(Ljava/lang/String;)V

    .line 989
    return-void
.end method

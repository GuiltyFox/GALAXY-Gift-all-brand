.class Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$1;
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

.field private final synthetic val$request:Lcom/samsung/privilege/bean/MarketReview;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;Lcom/samsung/privilege/bean/MarketReview;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$1;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$1;->val$request:Lcom/samsung/privilege/bean/MarketReview;

    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$1;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter$1;->val$request:Lcom/samsung/privilege/bean/MarketReview;

    iget-object v1, v1, Lcom/samsung/privilege/bean/MarketReview;->ImageUrl:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->doViewPhotoSmart(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;->access$0(Lcom/samsung/privilege/activity/RequestHelpActivity$RequestHelpAdapter;Ljava/lang/String;)V

    .line 978
    return-void
.end method

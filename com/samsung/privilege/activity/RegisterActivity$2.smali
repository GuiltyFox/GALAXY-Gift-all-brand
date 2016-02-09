.class Lcom/samsung/privilege/activity/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/RegisterActivity;->addListenerOnButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RegisterActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/RegisterActivity$2;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 324
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 325
    iget-object v0, p0, Lcom/samsung/privilege/activity/RegisterActivity$2;->this$0:Lcom/samsung/privilege/activity/RegisterActivity;

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/RegisterActivity;->showDialog(I)V

    .line 326
    return-void
.end method

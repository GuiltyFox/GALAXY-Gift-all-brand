.class Lcom/samsung/privilege/activity/MainMenuFragment$24;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;->handleError(Lcom/facebook/FacebookRequestError;)V
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$24;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    .line 2798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2803
    return-void
.end method

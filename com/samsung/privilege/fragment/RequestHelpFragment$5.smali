.class Lcom/samsung/privilege/fragment/RequestHelpFragment$5;
.super Ljava/lang/Object;
.source "RequestHelpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/RequestHelpFragment;->f()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/RequestHelpFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 2

    .prologue
    .line 243
    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$5;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$5;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->m(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Z

    .line 247
    return-void
.end method

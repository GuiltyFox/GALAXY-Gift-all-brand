.class Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "Spinner.java"


# instance fields
.field final synthetic a:Lcom/rey/material/widget/Spinner;


# direct methods
.method private constructor <init>(Lcom/rey/material/widget/Spinner;)V
    .registers 2

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;->a:Lcom/rey/material/widget/Spinner;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rey/material/widget/Spinner;Lcom/rey/material/widget/Spinner$1;)V
    .registers 3

    .prologue
    .line 1050
    invoke-direct {p0, p1}, Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;-><init>(Lcom/rey/material/widget/Spinner;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;->a:Lcom/rey/material/widget/Spinner;

    invoke-static {v0}, Lcom/rey/material/widget/Spinner;->c(Lcom/rey/material/widget/Spinner;)V

    .line 1055
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$SpinnerDataSetObserver;->a:Lcom/rey/material/widget/Spinner;

    invoke-static {v0}, Lcom/rey/material/widget/Spinner;->d(Lcom/rey/material/widget/Spinner;)V

    .line 1060
    return-void
.end method

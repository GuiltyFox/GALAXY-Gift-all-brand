.class Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;
.super Ljava/lang/Object;
.source "ReviewGiftBlurDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;->a(I[Lcz/msebera/android/httpclient/Header;[B)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 166
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;->b:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;

    iput-object p2, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/16 v9, 0xa

    const/4 v2, 0x0

    .line 169
    move v1, v2

    :goto_4
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;->getAnswer()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_cc

    .line 171
    new-instance v3, Landroid/widget/RadioButton;

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0e006c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 173
    const/4 v0, 0x2

    invoke-static {}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 174
    sget-object v0, Lcom/samsung/privilege/GalaxyGift;->b:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 175
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "1054"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 176
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;->getAnswer()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel$AnswerEntity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel$AnswerEntity;->getText_th()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_74
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    const/4 v4, 0x0

    :try_start_7c
    iget-object v5, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;->b:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;

    iget-object v5, v5, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;->b:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v5, v6}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->a(F)I

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;->b:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;

    iget-object v7, v7, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;->b:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v7, v8}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->a(F)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_94} :catch_c7

    .line 187
    :goto_94
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;->b:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;

    iget-object v0, v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$ViewHolder;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 191
    new-instance v0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3$1;

    invoke-direct {v0, p0, v3}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3$1;-><init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;Landroid/widget/RadioButton;)V

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 169
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    .line 178
    :cond_ad
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$2$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel;->getAnswer()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel$AnswerEntity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/ReviewGiftSurveyRowModel$AnswerEntity;->getText_en()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_74

    .line 184
    :catch_c7
    move-exception v4

    .line 185
    invoke-virtual {v0, v2, v9, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_94

    .line 200
    :cond_cc
    return-void
.end method

.class public Lcom/bzbs/lib/survey/util/OnDestroyView;
.super Ljava/lang/Object;
.source "OnDestroyView.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/bzbs/lib/survey/util/OnDestroyView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/util/OnDestroyView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unbindReferences(Landroid/app/Activity;I)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "viewID"    # I

    .prologue
    .line 16
    sget-object v1, Lcom/bzbs/lib/survey/util/OnDestroyView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "activity := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :try_start_1d
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 20
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2f

    .line 25
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/OnDestroyView;->unbindViewReferences(Landroid/view/View;)V

    .line 26
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2f

    .line 27
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "view":Landroid/view/View;
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/OnDestroyView;->unbindViewGroupReferences(Landroid/view/ViewGroup;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_2f} :catch_30

    .line 34
    :cond_2f
    :goto_2f
    return-void

    .line 31
    :catch_30
    move-exception v1

    goto :goto_2f
.end method

.method public static unbindReferences(Landroid/support/v4/app/Fragment;I)V
    .registers 6
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "viewID"    # I

    .prologue
    .line 38
    sget-object v1, Lcom/bzbs/lib/survey/util/OnDestroyView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fragment := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :try_start_1d
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_34

    .line 47
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/OnDestroyView;->unbindViewReferences(Landroid/view/View;)V

    .line 48
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_33

    .line 49
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "view":Landroid/view/View;
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/OnDestroyView;->unbindViewGroupReferences(Landroid/view/ViewGroup;)V

    .line 58
    :cond_33
    :goto_33
    return-void

    .line 52
    .restart local v0    # "view":Landroid/view/View;
    :cond_34
    sget-object v1, Lcom/bzbs/lib/survey/util/OnDestroyView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fragment := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  view == null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_58} :catch_59

    goto :goto_33

    .line 55
    .end local v0    # "view":Landroid/view/View;
    :catch_59
    move-exception v1

    goto :goto_33
.end method

.method public static unbindViewDrawable(Landroid/view/View;)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 83
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_a

    .line 84
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 85
    :cond_a
    sget-object v2, Lcom/bzbs/lib/survey/util/OnDestroyView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "d.setCallback(null);"

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    instance-of v2, p0, Landroid/widget/ImageView;

    if-eqz v2, :cond_30

    move-object v1, p0

    .line 87
    check-cast v1, Landroid/widget/ImageView;

    .line 88
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_22

    .line 90
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 91
    :cond_22
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    sget-object v2, Lcom/bzbs/lib/survey/util/OnDestroyView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "imageView.setBackgroundDrawable(null);"

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_30
    return-void
.end method

.method private static unbindViewGroupReferences(Landroid/view/ViewGroup;)V
    .registers 5
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 63
    .local v1, "nrOfChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_1f

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 65
    .local v2, "view":Landroid/view/View;
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/OnDestroyView;->unbindViewReferences(Landroid/view/View;)V

    .line 66
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_17

    .line 67
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "view":Landroid/view/View;
    invoke-static {v2}, Lcom/bzbs/lib/survey/util/OnDestroyView;->unbindViewGroupReferences(Landroid/view/ViewGroup;)V

    .line 70
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1a} :catch_1d

    .line 63
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 71
    :catch_1d
    move-exception v3

    goto :goto_1a

    .line 76
    :cond_1f
    return-void
.end method

.method private static unbindViewReferences(Landroid/view/View;)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 101
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget-object v2, Lcom/bzbs/lib/survey/util/OnDestroyView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "view.setOnClickListener(null);"

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_83

    .line 107
    :goto_d
    const/4 v2, 0x0

    :try_start_e
    invoke-virtual {p0, v2}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 108
    sget-object v2, Lcom/bzbs/lib/survey/util/OnDestroyView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "view.setOnCreateContextMenuListener(null);"

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_19} :catch_81

    .line 113
    :goto_19
    const/4 v2, 0x0

    :try_start_1a
    invoke-virtual {p0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 114
    sget-object v2, Lcom/bzbs/lib/survey/util/OnDestroyView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "view.setOnFocusChangeListener(null);"

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_25} :catch_7f

    .line 119
    :goto_25
    const/4 v2, 0x0

    :try_start_26
    invoke-virtual {p0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 120
    sget-object v2, Lcom/bzbs/lib/survey/util/OnDestroyView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "view.setOnKeyListener(null);"

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_31} :catch_7d

    .line 125
    :goto_31
    const/4 v2, 0x0

    :try_start_32
    invoke-virtual {p0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 126
    sget-object v2, Lcom/bzbs/lib/survey/util/OnDestroyView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "view.setOnLongClickListener(null);"

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_3d} :catch_7b

    .line 131
    :goto_3d
    const/4 v2, 0x0

    :try_start_3e
    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    sget-object v2, Lcom/bzbs/lib/survey/util/OnDestroyView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "view.setOnClickListener(null);"

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_49} :catch_79

    .line 138
    :goto_49
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 139
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_52

    .line 140
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 141
    :cond_52
    sget-object v2, Lcom/bzbs/lib/survey/util/OnDestroyView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "d.setCallback(null);"

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    instance-of v2, p0, Landroid/widget/ImageView;

    if-eqz v2, :cond_78

    move-object v1, p0

    .line 143
    check-cast v1, Landroid/widget/ImageView;

    .line 144
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_6a

    .line 146
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 147
    :cond_6a
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    sget-object v2, Lcom/bzbs/lib/survey/util/OnDestroyView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "imageView.setBackgroundDrawable(null);"

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_78
    return-void

    .line 133
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_79
    move-exception v2

    goto :goto_49

    .line 127
    :catch_7b
    move-exception v2

    goto :goto_3d

    .line 121
    :catch_7d
    move-exception v2

    goto :goto_31

    .line 115
    :catch_7f
    move-exception v2

    goto :goto_25

    .line 109
    :catch_81
    move-exception v2

    goto :goto_19

    .line 103
    :catch_83
    move-exception v2

    goto :goto_d
.end method

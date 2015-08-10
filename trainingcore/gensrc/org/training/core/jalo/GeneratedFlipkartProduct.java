/*
 * ----------------------------------------------------------------
 * --- WARNING: THIS FILE IS GENERATED AND WILL BE OVERWRITTEN! ---
 * --- Generated at Aug 7, 2015 8:10:51 PM                      ---
 * ----------------------------------------------------------------
 */
package org.training.core.jalo;

import de.hybris.platform.jalo.Item.AttributeMode;
import de.hybris.platform.jalo.SessionContext;
import de.hybris.platform.jalo.product.Product;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.training.core.constants.TrainingCoreConstants;

/**
 * Generated class for type {@link org.training.core.jalo.FlipkartProduct FlipkartProduct}.
 */
@SuppressWarnings({"deprecation","unused","cast","PMD"})
public abstract class GeneratedFlipkartProduct extends Product
{
	/** Qualifier of the <code>FlipkartProduct.hdd</code> attribute **/
	public static final String HDD = "hdd";
	protected static final Map<String, AttributeMode> DEFAULT_INITIAL_ATTRIBUTES;
	static
	{
		final Map<String, AttributeMode> tmp = new HashMap<String, AttributeMode>(Product.DEFAULT_INITIAL_ATTRIBUTES);
		tmp.put(HDD, AttributeMode.INITIAL);
		DEFAULT_INITIAL_ATTRIBUTES = Collections.unmodifiableMap(tmp);
	}
	@Override
	protected Map<String, AttributeMode> getDefaultAttributeModes()
	{
		return DEFAULT_INITIAL_ATTRIBUTES;
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>FlipkartProduct.hdd</code> attribute.
	 * @return the hdd - Pendrive of Flipkart product
	 */
	public String getHdd(final SessionContext ctx)
	{
		return (String)getProperty( ctx, HDD);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>FlipkartProduct.hdd</code> attribute.
	 * @return the hdd - Pendrive of Flipkart product
	 */
	public String getHdd()
	{
		return getHdd( getSession().getSessionContext() );
	}
	
	/**
	 * <i>Generated method</i> - Setter of the <code>FlipkartProduct.hdd</code> attribute. 
	 * @param value the hdd - Pendrive of Flipkart product
	 */
	public void setHdd(final SessionContext ctx, final String value)
	{
		setProperty(ctx, HDD,value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of the <code>FlipkartProduct.hdd</code> attribute. 
	 * @param value the hdd - Pendrive of Flipkart product
	 */
	public void setHdd(final String value)
	{
		setHdd( getSession().getSessionContext(), value );
	}
	
}

/*
 * ----------------------------------------------------------------
 * --- WARNING: THIS FILE IS GENERATED AND WILL BE OVERWRITTEN! ---
 * --- Generated at Aug 7, 2015 8:10:51 PM                      ---
 * ----------------------------------------------------------------
 */
package org.training.core.jalo;

import de.hybris.platform.jalo.Item.AttributeMode;
import de.hybris.platform.jalo.JaloInvalidParameterException;
import de.hybris.platform.jalo.SessionContext;
import de.hybris.platform.jalo.c2l.C2LManager;
import de.hybris.platform.jalo.c2l.Language;
import de.hybris.platform.jalo.product.Product;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.training.core.constants.TrainingCoreConstants;

/**
 * Generated class for type {@link org.training.core.jalo.ApparelProduct AmazonProduct}.
 */
@SuppressWarnings({"deprecation","unused","cast","PMD"})
public abstract class GeneratedApparelProduct extends Product
{
	/** Qualifier of the <code>AmazonProduct.pendrive</code> attribute **/
	public static final String PENDRIVE = "pendrive";
	/** Qualifier of the <code>AmazonProduct.Computers</code> attribute **/
	public static final String COMPUTERS = "Computers";
	protected static final Map<String, AttributeMode> DEFAULT_INITIAL_ATTRIBUTES;
	static
	{
		final Map<String, AttributeMode> tmp = new HashMap<String, AttributeMode>(Product.DEFAULT_INITIAL_ATTRIBUTES);
		tmp.put(PENDRIVE, AttributeMode.INITIAL);
		tmp.put(COMPUTERS, AttributeMode.INITIAL);
		DEFAULT_INITIAL_ATTRIBUTES = Collections.unmodifiableMap(tmp);
	}
	@Override
	protected Map<String, AttributeMode> getDefaultAttributeModes()
	{
		return DEFAULT_INITIAL_ATTRIBUTES;
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>AmazonProduct.Computers</code> attribute.
	 * @return the Computers - Computers of Amazon product
	 */
	public String getComputers(final SessionContext ctx)
	{
		if( ctx == null || ctx.getLanguage() == null )
		{
			throw new JaloInvalidParameterException("GeneratedApparelProduct.getComputers requires a session language", 0 );
		}
		return (String)getLocalizedProperty( ctx, COMPUTERS);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>AmazonProduct.Computers</code> attribute.
	 * @return the Computers - Computers of Amazon product
	 */
	public String getComputers()
	{
		return getComputers( getSession().getSessionContext() );
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>AmazonProduct.Computers</code> attribute. 
	 * @return the localized Computers - Computers of Amazon product
	 */
	public Map<Language,String> getAllComputers(final SessionContext ctx)
	{
		return (Map<Language,String>)getAllLocalizedProperties(ctx,COMPUTERS,C2LManager.getInstance().getAllLanguages());
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>AmazonProduct.Computers</code> attribute. 
	 * @return the localized Computers - Computers of Amazon product
	 */
	public Map<Language,String> getAllComputers()
	{
		return getAllComputers( getSession().getSessionContext() );
	}
	
	/**
	 * <i>Generated method</i> - Setter of the <code>AmazonProduct.Computers</code> attribute. 
	 * @param value the Computers - Computers of Amazon product
	 */
	public void setComputers(final SessionContext ctx, final String value)
	{
		if( ctx == null || ctx.getLanguage() == null )
		{
			throw new JaloInvalidParameterException("GeneratedApparelProduct.setComputers requires a session language", 0 );
		}
		setLocalizedProperty(ctx, COMPUTERS,value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of the <code>AmazonProduct.Computers</code> attribute. 
	 * @param value the Computers - Computers of Amazon product
	 */
	public void setComputers(final String value)
	{
		setComputers( getSession().getSessionContext(), value );
	}
	
	/**
	 * <i>Generated method</i> - Setter of the <code>AmazonProduct.Computers</code> attribute. 
	 * @param value the Computers - Computers of Amazon product
	 */
	public void setAllComputers(final SessionContext ctx, final Map<Language,String> value)
	{
		setAllLocalizedProperties(ctx,COMPUTERS,value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of the <code>AmazonProduct.Computers</code> attribute. 
	 * @param value the Computers - Computers of Amazon product
	 */
	public void setAllComputers(final Map<Language,String> value)
	{
		setAllComputers( getSession().getSessionContext(), value );
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>AmazonProduct.pendrive</code> attribute.
	 * @return the pendrive - Pendrive of Amazon product
	 */
	public String getPendrive(final SessionContext ctx)
	{
		if( ctx == null || ctx.getLanguage() == null )
		{
			throw new JaloInvalidParameterException("GeneratedApparelProduct.getPendrive requires a session language", 0 );
		}
		return (String)getLocalizedProperty( ctx, PENDRIVE);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>AmazonProduct.pendrive</code> attribute.
	 * @return the pendrive - Pendrive of Amazon product
	 */
	public String getPendrive()
	{
		return getPendrive( getSession().getSessionContext() );
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>AmazonProduct.pendrive</code> attribute. 
	 * @return the localized pendrive - Pendrive of Amazon product
	 */
	public Map<Language,String> getAllPendrive(final SessionContext ctx)
	{
		return (Map<Language,String>)getAllLocalizedProperties(ctx,PENDRIVE,C2LManager.getInstance().getAllLanguages());
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>AmazonProduct.pendrive</code> attribute. 
	 * @return the localized pendrive - Pendrive of Amazon product
	 */
	public Map<Language,String> getAllPendrive()
	{
		return getAllPendrive( getSession().getSessionContext() );
	}
	
	/**
	 * <i>Generated method</i> - Setter of the <code>AmazonProduct.pendrive</code> attribute. 
	 * @param value the pendrive - Pendrive of Amazon product
	 */
	public void setPendrive(final SessionContext ctx, final String value)
	{
		if( ctx == null || ctx.getLanguage() == null )
		{
			throw new JaloInvalidParameterException("GeneratedApparelProduct.setPendrive requires a session language", 0 );
		}
		setLocalizedProperty(ctx, PENDRIVE,value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of the <code>AmazonProduct.pendrive</code> attribute. 
	 * @param value the pendrive - Pendrive of Amazon product
	 */
	public void setPendrive(final String value)
	{
		setPendrive( getSession().getSessionContext(), value );
	}
	
	/**
	 * <i>Generated method</i> - Setter of the <code>AmazonProduct.pendrive</code> attribute. 
	 * @param value the pendrive - Pendrive of Amazon product
	 */
	public void setAllPendrive(final SessionContext ctx, final Map<Language,String> value)
	{
		setAllLocalizedProperties(ctx,PENDRIVE,value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of the <code>AmazonProduct.pendrive</code> attribute. 
	 * @param value the pendrive - Pendrive of Amazon product
	 */
	public void setAllPendrive(final Map<Language,String> value)
	{
		setAllPendrive( getSession().getSessionContext(), value );
	}
	
}
